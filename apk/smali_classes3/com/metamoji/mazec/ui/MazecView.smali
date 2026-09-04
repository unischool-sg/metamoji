.class public Lcom/metamoji/mazec/ui/MazecView;
.super Landroid/widget/LinearLayout;
.source "MazecView.java"

# interfaces
.implements Lcom/metamoji/mazec/MazecIms$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;,
        Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;,
        Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;,
        Lcom/metamoji/mazec/ui/MazecView$Repeater;,
        Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;,
        Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;,
        Lcom/metamoji/mazec/ui/MazecView$PopupMenuCreator;
    }
.end annotation


# static fields
.field private static final CUR_KEY_REPEAT_DELAY_HIGH:I = 0xc8

.field private static final CUR_KEY_REPEAT_DELAY_NORMAL:I = 0x190

.field private static final DELAY_ENABLE_DELETE_BACKWARD:I = 0x4e2

.field private static final DELETE_STROKE_ALL:I = 0x3

.field private static final DELETE_STROKE_BLOCK:I = 0x2

.field private static final DELETE_STROKE_NONE:I = 0x0

.field private static final DELETE_STROKE_ONE:I = 0x1

.field private static final ENTER_CONVERT_STROKE_FIRST_CANDIDATE:I = 0x1

.field private static final ENTER_CONVERT_STROKE_NONE:I = 0x0

.field private static final ENTER_CONVERT_STROKE_STROKES:I = 0x2

.field private static final ENTER_SPACE_FULL:I = 0x2

.field private static final ENTER_SPACE_HALF:I = 0x1

.field private static final ENTER_SPACE_NONE:I = 0x0

.field public static final MENU_BUTTON_KEYBOARD:I = 0x4

.field public static final MENU_BUTTON_MENU:I = 0x1

.field public static final MENU_BUTTON_NONE:I = 0x0

.field public static final MENU_BUTTON_STROKE:I = 0x3

.field public static final MENU_BUTTON_TEXT:I = 0x2

.field private static final POPUP_DELAY:I = 0x12c

.field private static final REPEAT_INITIAL_DELAY:I = 0x2bc

.field private static final REPEAT_INTERVAL:I = 0x32


# instance fields
.field private mButtonAction:Landroid/widget/ImageView;

.field private mButtonBackspace:Landroid/widget/ImageView;

.field private mButtonCursor:Landroid/widget/ImageView;

.field private mButtonCursorLeft:Landroid/widget/ImageView;

.field private mButtonCursorRight:Landroid/widget/ImageView;

.field private mButtonDeleteStroke:Landroid/widget/ImageView;

.field private mButtonEnterConvert:Landroid/widget/ImageView;

.field private mButtonEnterStroke:Landroid/widget/ImageView;

.field private mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

.field private mButtonHide:Landroid/widget/ImageView;

.field private mButtonMenu:Landroid/widget/ImageView;

.field private mButtonMushroom:Landroid/widget/ImageView;

.field private mButtonNewLine:Landroid/widget/ImageView;

.field private mButtonNext:Landroid/view/View;

.field private mButtonPrev:Landroid/view/View;

.field private mButtonSkip:Landroid/widget/ImageView;

.field private mButtonSpace:Landroid/widget/ImageView;

.field private mButtonSpaceFw:Landroid/widget/ImageView;

.field private mButtonSpaceHw:Landroid/widget/ImageView;

.field private mButtonSwitchIME:Landroid/widget/ImageView;

.field private mCenterPanel:Landroid/widget/LinearLayout;

.field private mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

.field private mDelayedPopupCreator_:Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

.field private mDeleteBackwardRestorer:Ljava/lang/Runnable;

.field private mDummyCandidates:Landroid/view/View;

.field private mEnable:Z

.field private mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

.field private mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

.field private mImHandwriting:Landroid/widget/ImageView;

.field private mImKeyboard:Landroid/widget/ImageView;

.field private mImStroke:Landroid/widget/ImageView;

.field private mImText:Landroid/widget/ImageView;

.field private mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

.field private mKeyboardPanel:Landroid/widget/LinearLayout;

.field private mLowerPanel:Landroid/widget/LinearLayout;

.field private mMenuBar:Landroid/view/View;

.field private mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

.field private mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

.field private mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

.field private mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

.field private mProgressOverlay:Landroid/view/View;

.field private mRepeater:Lcom/metamoji/mazec/ui/MazecView$Repeater;

.field private mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

.field private mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

.field private mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

.field private mUpperPanel:Landroid/widget/LinearLayout;

.field private mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonBackspace(Lcom/metamoji/mazec/ui/MazecView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonBackspace:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonMenu(Lcom/metamoji/mazec/ui/MazecView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCnvCandidatesBar(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesBar;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mDelayedPopupCreator_:Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeleteBackwardRestorer(Lcom/metamoji/mazec/ui/MazecView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mDeleteBackwardRestorer:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDummyCandidates(Lcom/metamoji/mazec/ui/MazecView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mDummyCandidates:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHwPanel(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/HandwritingPanel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyboardManager(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/KeyboardManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/CursorKeysPopuper;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressOverlay(Lcom/metamoji/mazec/ui/MazecView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mProgressOverlay:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectColorView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectColorView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectFilterView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectFilterView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectWidthView(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/SelectWidthView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewData(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/HwStrokesModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/MazecView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDelayedPopupCreator_(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mDelayedPopupCreator_:Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMenuPopupWnd(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MenuPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPopupCnvCands(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPopupCurKeys(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/CursorKeysPopuper;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateMenuPopup(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->createMenuPopup(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->notifyButtonClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButtonStates(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->updateButtonStates()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButtonStatesInWriting(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->updateButtonStatesInWriting()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    .line 141
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonDeleteStroke:Landroid/widget/ImageView;

    .line 142
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNewLine:Landroid/widget/ImageView;

    .line 143
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    .line 144
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterStroke:Landroid/widget/ImageView;

    .line 148
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterConvert:Landroid/widget/ImageView;

    .line 149
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSkip:Landroid/widget/ImageView;

    .line 153
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpace:Landroid/widget/ImageView;

    .line 157
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceHw:Landroid/widget/ImageView;

    .line 161
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceFw:Landroid/widget/ImageView;

    .line 162
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonBackspace:Landroid/widget/ImageView;

    .line 163
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    .line 164
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorLeft:Landroid/widget/ImageView;

    .line 165
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorRight:Landroid/widget/ImageView;

    .line 166
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHide:Landroid/widget/ImageView;

    .line 167
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSwitchIME:Landroid/widget/ImageView;

    .line 168
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNext:Landroid/view/View;

    .line 169
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonPrev:Landroid/view/View;

    .line 170
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    .line 172
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImStroke:Landroid/widget/ImageView;

    .line 173
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImText:Landroid/widget/ImageView;

    .line 174
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    .line 175
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImHandwriting:Landroid/widget/ImageView;

    .line 176
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    .line 177
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    .line 178
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    .line 179
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

    .line 180
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMushroom:Landroid/widget/ImageView;

    .line 182
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

    .line 184
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    .line 185
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    .line 186
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    .line 191
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    .line 195
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    .line 197
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    .line 198
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mDummyCandidates:Landroid/view/View;

    .line 348
    new-instance p1, Lcom/metamoji/mazec/ui/MazecView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/MazecView$1;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mDeleteBackwardRestorer:Ljava/lang/Runnable;

    .line 369
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    .line 141
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonDeleteStroke:Landroid/widget/ImageView;

    .line 142
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNewLine:Landroid/widget/ImageView;

    .line 143
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    .line 144
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterStroke:Landroid/widget/ImageView;

    .line 148
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterConvert:Landroid/widget/ImageView;

    .line 149
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSkip:Landroid/widget/ImageView;

    .line 153
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpace:Landroid/widget/ImageView;

    .line 157
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceHw:Landroid/widget/ImageView;

    .line 161
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceFw:Landroid/widget/ImageView;

    .line 162
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonBackspace:Landroid/widget/ImageView;

    .line 163
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    .line 164
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorLeft:Landroid/widget/ImageView;

    .line 165
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorRight:Landroid/widget/ImageView;

    .line 166
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHide:Landroid/widget/ImageView;

    .line 167
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSwitchIME:Landroid/widget/ImageView;

    .line 168
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNext:Landroid/view/View;

    .line 169
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonPrev:Landroid/view/View;

    .line 170
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    .line 172
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImStroke:Landroid/widget/ImageView;

    .line 173
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImText:Landroid/widget/ImageView;

    .line 174
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    .line 175
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImHandwriting:Landroid/widget/ImageView;

    .line 176
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    .line 177
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    .line 178
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    .line 179
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

    .line 180
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMushroom:Landroid/widget/ImageView;

    .line 182
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

    .line 184
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    .line 185
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    .line 186
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    .line 191
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    .line 195
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    .line 197
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    .line 198
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mDummyCandidates:Landroid/view/View;

    .line 348
    new-instance p1, Lcom/metamoji/mazec/ui/MazecView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/MazecView$1;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mDeleteBackwardRestorer:Ljava/lang/Runnable;

    .line 374
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->init()V

    return-void
.end method

.method private checkLangResourcesUpdate()V
    .locals 6

    .line 2982
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2983
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2988
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 2989
    const-string v3, "last_update_query_version_code"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2990
    const-string v4, "last_update_query_date"

    const/16 v5, 0x12

    if-ge v2, v5, :cond_1

    .line 2991
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2992
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2993
    const-string v2, "UpdateCheckedDate"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2994
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2995
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2997
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3000
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss Z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3001
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 3002
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 3003
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1499700

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3008
    const-string v2, "Mazec"

    const-string v3, "invalid date format"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3014
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/metamoji/mazec/purchase/PurchaseManager;->checkUpdateInfo(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3015
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 3020
    :cond_3
    invoke-static {v0}, Lcom/metamoji/mazec/CheckUpdateActivity;->startActivityForStartUp(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .line 2618
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2619
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->stopRepeat()V

    .line 2620
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mDelayedPopupCreator_:Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    if-eqz v1, :cond_0

    .line 2621
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2622
    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mDelayedPopupCreator_:Lcom/metamoji/mazec/ui/MazecView$DelayedPopupCreator;

    :cond_0
    return-void
.end method

.method private createMenuPopup(Lcom/metamoji/mazec/MazecIms;)Lcom/metamoji/mazec/ui/PopupMenu;
    .locals 14

    .line 965
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    .line 966
    new-array v11, v0, [I

    .line 967
    invoke-direct {p0, p1, v11}, Lcom/metamoji/mazec/ui/MazecView;->setupMenuPopupContent(Lcom/metamoji/mazec/MazecIms;[I)I

    move-result v12

    const/4 v2, 0x2

    if-ge v12, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x1

    if-ne v12, v2, :cond_4

    .line 981
    aget v3, v11, v3

    if-eq v3, v2, :cond_3

    if-eq v3, v0, :cond_2

    const/4 v0, 0x4

    if-eq v3, v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 991
    :cond_1
    const-string v0, "drawable.menu_expanded_image_na_k"

    goto :goto_0

    .line 984
    :cond_2
    const-string v0, "drawable.menu_expanded_image_na_s"

    goto :goto_0

    .line 988
    :cond_3
    const-string v0, "drawable.menu_expanded_image_na_c"

    .line 994
    :goto_0
    const-string v2, "dimen.menu_buttons_image_na_w2"

    goto :goto_2

    .line 996
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v4

    if-eq v4, v3, :cond_7

    if-eq v4, v2, :cond_6

    if-eq v4, v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 1006
    :cond_5
    const-string v0, "drawable.menu_expanded_image_na_cs"

    goto :goto_1

    .line 1003
    :cond_6
    const-string v0, "drawable.menu_expanded_image_na_sk"

    goto :goto_1

    .line 999
    :cond_7
    const-string v0, "drawable.menu_expanded_image_na_ck"

    .line 1009
    :goto_1
    const-string v2, "dimen.menu_buttons_image_na_w3"

    :goto_2
    move-object v5, v0

    if-nez v5, :cond_8

    return-object v1

    .line 1016
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v1, v2

    .line 1017
    new-instance v2, Lcom/metamoji/mazec/ui/PopupMenu;

    .line 1021
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1022
    const-string v1, "dimen.menu_buttons_image_na_h"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const-string v1, "dimen.menu_buttons_image_offset_x"

    .line 1023
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const-string v1, "dimen.menu_buttons_image_offset_y"

    .line 1024
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v13, 0x0

    const-string v4, "layout.menu_buttons_popup_na"

    const/4 v10, 0x3

    move-object v3, p1

    invoke-direct/range {v2 .. v13}, Lcom/metamoji/mazec/ui/PopupMenu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIII[III)V

    .line 1030
    new-instance p1, Lcom/metamoji/mazec/ui/MazecView$19;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/MazecView$19;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v2, p1}, Lcom/metamoji/mazec/ui/PopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-object v2

    :cond_9
    return-object v1
.end method

.method static getCandidateTypes(Z)[I
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 2921
    filled-new-array {v4, v3, v1, v2, v0}, [I

    move-result-object p0

    return-object p0

    .line 2929
    :cond_0
    filled-new-array {v4, v3, v2, v1, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method private initCnvCandidatesBar(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 1730
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1731
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v2, :cond_0

    .line 1732
    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/MazecIms;->setCandidatesView(Landroid/view/View;)V

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->unregisterFromLister(Lcom/metamoji/mazec/MazecIms;)V

    .line 1735
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    .line 1738
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "layout.cnv_candidates_bar"

    .line 1739
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    .line 1738
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    if-eqz v0, :cond_3

    .line 1743
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->init(Lcom/metamoji/mazec/MazecIms;)V

    .line 1745
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_2

    .line 1746
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->setCandidatesView(Landroid/view/View;)V

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->registerAsLister(Lcom/metamoji/mazec/MazecIms;)V

    .line 1750
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$39;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$39;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->setListener(Lcom/metamoji/mazec/ui/CnvCandidatesBar$Listener;)V

    :cond_3
    return-void
.end method

.method private initDeleteStrokeButton(Lcom/metamoji/mazec/MazecIms;)V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.delete_stroke"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonDeleteStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1070
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$20;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/mazec/ui/MazecView$20;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/MazecIms;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->setupPopupMenuButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;)V

    :cond_0
    return-void
.end method

.method private initEnterConvertButton(Lcom/metamoji/mazec/MazecIms;)V
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.enter_convert"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterConvert:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result v0

    .line 1164
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterConvert:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1130
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$21;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/ui/MazecView$21;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/MazecIms;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/metamoji/mazec/ui/MazecView;->setupPopupMenuButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;)V

    return-void

    .line 1164
    :cond_0
    new-instance p1, Lcom/metamoji/mazec/ui/MazecView$22;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/ui/MazecView$22;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private initEnterpriseOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 1687
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.next_ctrl"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNext:Landroid/view/View;

    .line 1688
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.input_next"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1690
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$37;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$37;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.prev_ctrl"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonPrev:Landroid/view/View;

    .line 1699
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.input_prev"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1701
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$38;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$38;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1711
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mDummyCandidates:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1712
    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/MazecIms;->setCandidatesView(Landroid/view/View;)V

    .line 1713
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mDummyCandidates:Landroid/view/View;

    .line 1716
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1717
    const-string v2, "layout.dummy_candidates_view"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mDummyCandidates:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1719
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->setCandidatesView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1720
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->setCandidatesViewShown(Z)V

    :cond_3
    return-void
.end method

.method private initExpandableSpaceButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Ljava/lang/String;[I)V
    .locals 1

    .line 1232
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$24;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/metamoji/mazec/ui/MazecView$24;-><init>(Lcom/metamoji/mazec/ui/MazecView;Ljava/lang/String;[ILcom/metamoji/mazec/MazecIms;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/mazec/ui/MazecView;->setupRepeatablePopupMenuButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;)V

    return-void
.end method

.method private initFullWidthSpaceButton(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 1225
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.enter_space_fw"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceFw:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1227
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "layout.enter_space_fw_popup_na"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/metamoji/mazec/ui/MazecView;->initExpandableSpaceButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private initHalfWidthSpaceButton(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 1218
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.enter_space_hw"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceHw:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 1220
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "layout.enter_space_hw_popup_na"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/metamoji/mazec/ui/MazecView;->initExpandableSpaceButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private initHandwritingPanel(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 1794
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1795
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->disposeView(Lcom/metamoji/mazec/MazecIms;)V

    .line 1796
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    .line 1798
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    .line 1801
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "layout.handwriting_panel"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/HandwritingPanel;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    if-eqz v0, :cond_1

    .line 1804
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->initView(Lcom/metamoji/mazec/MazecIms;)V

    .line 1806
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->getHwView()Lcom/metamoji/mazec/ui/HandWritingView;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    :cond_1
    return-void
.end method

.method private initKeyboardPanel(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 1816
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1817
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->removeOnKeyboardListener(Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;)V

    .line 1818
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->unregisterFromLister(Lcom/metamoji/mazec/MazecIms;)V

    .line 1819
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    .line 1822
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "layout.keyboard_panel"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1824
    const-string v1, "id.keyboard"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    if-eqz v0, :cond_2

    .line 1826
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager;

    iget-object v2, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-direct {v1, v0, v2}, Lcom/metamoji/mazec/ui/KeyboardManager;-><init>(Landroid/inputmethodservice/KeyboardView;Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    .line 1827
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->registerAsLister(Lcom/metamoji/mazec/MazecIms;)V

    .line 1828
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->addOnKeyboardListener(Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;)V

    .line 1830
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardPanel:Landroid/widget/LinearLayout;

    const-string v0, "id.keyboard_dt"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/inputmethodservice/KeyboardView;

    if-eqz p1, :cond_1

    .line 1832
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardView(Landroid/inputmethodservice/KeyboardView;I)V

    .line 1833
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardView(Landroid/inputmethodservice/KeyboardView;I)V

    .line 1836
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardPanel:Landroid/widget/LinearLayout;

    const-string v0, "id.keyboard_mt"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/inputmethodservice/KeyboardView;

    if-eqz p1, :cond_2

    .line 1838
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardView(Landroid/inputmethodservice/KeyboardView;I)V

    :cond_2
    return-void
.end method

.method private initMenuBar(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 457
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 460
    const-string v1, "layout.menu_bar_na"

    .line 461
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    .line 466
    const-string v1, "id.cursor_key"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 468
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$4;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$4;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 549
    :cond_0
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_1

    .line 551
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$5;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$5;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 656
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.cursor_left_key"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 658
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$6;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$6;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.cursor_right_key"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 682
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$7;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$7;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 704
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initDeleteStrokeButton(Lcom/metamoji/mazec/MazecIms;)V

    .line 707
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.iwnn"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSwitchIME:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 709
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$8;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$8;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    :cond_4
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_5

    .line 720
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.mazec_keyboard"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    .line 721
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$9;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$9;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 744
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.mazec_handwriting"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImHandwriting:Landroid/widget/ImageView;

    .line 745
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$10;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$10;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 770
    :cond_5
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.new_line"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNewLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 772
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$11;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$11;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    :cond_6
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.im_action"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 791
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$12;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$12;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    :cond_7
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.enter_stroke"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 804
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$13;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$13;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    :cond_8
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initEnterConvertButton(Lcom/metamoji/mazec/MazecIms;)V

    .line 816
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.skip_reedit"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSkip:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 818
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$14;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$14;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    :cond_9
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initSpaceButtons(Lcom/metamoji/mazec/MazecIms;)V

    .line 831
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.delete_backward"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonBackspace:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 833
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$15;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$15;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 855
    :cond_a
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initMenuButton(Lcom/metamoji/mazec/MazecIms;)V

    .line 858
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne p1, v0, :cond_b

    .line 859
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v0, "id.clipboard"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    .line 861
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$16;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$16;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method private initMenuButton(Lcom/metamoji/mazec/MazecIms;)V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.menu"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 879
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    sget-object p1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne p1, v0, :cond_2

    .line 951
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$18;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$18;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 881
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$17;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/mazec/ui/MazecView$17;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method private initSmartPhoneOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 1449
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v0, "id.hide_key"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHide:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 1451
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$27;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$27;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initSpaceButton(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 1181
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v0, "id.enter_space_g"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpace:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 1183
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$23;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$23;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initSpaceButtons(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0

    .line 1175
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initSpaceButton(Lcom/metamoji/mazec/MazecIms;)V

    .line 1176
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initHalfWidthSpaceButton(Lcom/metamoji/mazec/MazecIms;)V

    .line 1177
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initFullWidthSpaceButton(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method

.method private initTabletOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 1497
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.hide_key"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1499
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$28;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$28;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.im_stroke"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1511
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$29;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$29;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1520
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.im_text"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImText:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1522
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$30;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$30;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1531
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.im_keyboard"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1533
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$31;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$31;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1542
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.center_pos"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    .line 1544
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    :cond_4
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.panel_height_changer"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/ToggleImageView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

    if-eqz v0, :cond_5

    .line 1550
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    if-eqz v1, :cond_5

    .line 1551
    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$32;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$32;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/ToggleImageView;->setOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;)V

    .line 1567
    :cond_5
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.select_filter_view"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/SelectFilterView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    if-eqz v0, :cond_6

    .line 1569
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 1570
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v2

    iget-boolean v0, v0, Lcom/metamoji/mazec/MazecPreferences;->dispFilterList:Z

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/mazec/ui/SelectFilterView;->initView(IZ)V

    .line 1571
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$33;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$33;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnSelectFilterListener(Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;)V

    .line 1600
    :cond_6
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.select_color_view"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/SelectColorView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    if-eqz v0, :cond_7

    .line 1602
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 1603
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    iget v2, v0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    iget-boolean v0, v0, Lcom/metamoji/mazec/MazecPreferences;->dispColorList:Z

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/mazec/ui/SelectColorView;->initView(IZ)V

    .line 1605
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    new-instance v1, Lcom/metamoji/mazec/ui/MazecView$34;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MazecView$34;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnSelectColorListener(Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;)V

    .line 1634
    :cond_7
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v1, "id.select_width_view"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/SelectWidthView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    if-eqz v0, :cond_8

    .line 1636
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object p1

    .line 1637
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    iget v1, p1, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    iget-boolean p1, p1, Lcom/metamoji/mazec/MazecPreferences;->dispWidthList:Z

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/mazec/ui/SelectWidthView;->initView(IZ)V

    .line 1639
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$35;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$35;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/SelectWidthView;->setOnSelectWidthListener(Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;)V

    .line 1668
    :cond_8
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const-string v0, "id.mushroom"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMushroom:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 1670
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$36;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$36;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method private notifyButtonClicked()V
    .locals 1

    .line 2798
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2799
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->notifyInputViewTouched()V

    .line 2800
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->cancelAutoActions()V

    return-void
.end method

.method private setupCenterPanel(Lcom/metamoji/mazec/MazecIms;)V
    .locals 4

    .line 1877
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCenterPanel:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    .line 1878
    const-string p1, "id.center_panel"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCenterPanel:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1880
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1883
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 1884
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCenterPanel:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/HandwritingPanel;->getPanelHeight()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1887
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardPanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 1888
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCenterPanel:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private setupLowerPanel(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 1893
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mLowerPanel:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    .line 1894
    const-string p1, "id.lower_panel"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mLowerPanel:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1896
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1899
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mLowerPanel:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setupMenuPopupContent(Lcom/metamoji/mazec/MazecIms;[I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1043
    aput v1, p2, v0

    .line 1045
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    .line 1046
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 1048
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1049
    aput v3, p2, v1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x3

    if-eq v0, v1, :cond_1

    .line 1052
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p1, v3, 0x1

    .line 1053
    aput v4, p2, v3

    move v3, p1

    :cond_1
    if-eq v0, v4, :cond_2

    if-nez v2, :cond_2

    .line 1056
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq p1, v0, :cond_2

    add-int/lit8 p1, v3, 0x1

    const/4 v0, 0x4

    .line 1059
    aput v0, p2, v3

    return p1

    :cond_2
    return v3
.end method

.method private setupPopupMenuButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;)V
    .locals 1

    .line 1280
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$25;

    invoke-direct {v0, p0, p3, p1}, Lcom/metamoji/mazec/ui/MazecView$25;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setupRepeatablePopupMenuButton(Lcom/metamoji/mazec/MazecIms;Landroid/widget/ImageView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;)V
    .locals 1

    .line 1348
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$26;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/metamoji/mazec/ui/MazecView$26;-><init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuHandler;Landroid/widget/ImageView;Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setupUpperPanel(Lcom/metamoji/mazec/MazecIms;)V
    .locals 4

    .line 1859
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mUpperPanel:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    .line 1860
    const-string p1, "id.upper_panel"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mUpperPanel:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 1862
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1865
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 1866
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mUpperPanel:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1869
    :cond_1
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    if-eqz p1, :cond_2

    .line 1871
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->getPreferableHeight()I

    move-result p1

    .line 1872
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mUpperPanel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private showAlertDialog(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2773
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/mazec/ui/MazecView;->showAlertDialog(ILjava/lang/String;Z)V

    return-void
.end method

.method private showAlertDialog(ILjava/lang/String;Z)V
    .locals 3

    .line 2784
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    const-class v2, Lcom/metamoji/mazec/MazecAlertMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    .line 2785
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2786
    sget-object v1, Lcom/metamoji/mazec/MazecAlertMessageActivity;->KEY_MSG_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 2788
    sget-object p1, Lcom/metamoji/mazec/MazecAlertMessageActivity;->KEY_MARKET_URI:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2790
    :cond_0
    sget-object p1, Lcom/metamoji/mazec/MazecAlertMessageActivity;->KEY_SWITCH_IME:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2791
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateButtonStates()V
    .locals 12

    .line 2074
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2075
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v1

    .line 2076
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->isLatinLang()Z

    move-result v2

    .line 2077
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v3

    .line 2078
    iget-object v4, p0, Lcom/metamoji/mazec/ui/MazecView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    .line 2082
    :goto_1
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonDeleteStroke:Landroid/widget/ImageView;

    const/4 v10, 0x4

    if-eqz v9, :cond_3

    if-eqz v8, :cond_2

    move v11, v10

    goto :goto_2

    :cond_2
    move v11, v7

    .line 2083
    :goto_2
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2086
    :cond_3
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonBackspace:Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    if-eqz v8, :cond_4

    move v11, v7

    goto :goto_3

    :cond_4
    move v11, v10

    .line 2087
    :goto_3
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2090
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getEditorAction()I

    move-result v9

    .line 2091
    iget-object v11, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNewLine:Landroid/widget/ImageView;

    if-eqz v11, :cond_8

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    if-eq v1, v6, :cond_7

    :cond_6
    if-ne v9, v6, :cond_7

    .line 2095
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2096
    iget-object v11, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNewLine:Landroid/widget/ImageView;

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 2098
    :cond_7
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2102
    :cond_8
    :goto_4
    iget-object v11, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    if-eqz v11, :cond_b

    if-nez v3, :cond_a

    if-eqz v4, :cond_9

    if-eq v1, v6, :cond_a

    :cond_9
    if-eq v9, v6, :cond_a

    .line 2106
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2107
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2108
    iget-object v8, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 2110
    :cond_a
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2114
    :cond_b
    :goto_5
    iget-object v8, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterStroke:Landroid/widget/ImageView;

    if-eqz v8, :cond_d

    if-eqz v4, :cond_c

    if-ne v1, v6, :cond_c

    move v9, v7

    goto :goto_6

    :cond_c
    move v9, v10

    .line 2115
    :goto_6
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2118
    :cond_d
    iget-object v8, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterConvert:Landroid/widget/ImageView;

    const/4 v9, 0x2

    if-eqz v8, :cond_f

    if-ne v1, v9, :cond_e

    .line 2119
    iget-object v11, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v11}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->hasCurrentCandidate()Z

    move-result v11

    if-eqz v11, :cond_e

    move v11, v7

    goto :goto_7

    :cond_e
    move v11, v10

    :goto_7
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2122
    :cond_f
    iget-object v8, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSkip:Landroid/widget/ImageView;

    if-eqz v8, :cond_13

    if-eqz v3, :cond_12

    .line 2124
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2128
    iget-object v8, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSkip:Landroid/widget/ImageView;

    if-ne v1, v9, :cond_10

    .line 2126
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_10
    if-nez v4, :cond_11

    move v11, v7

    goto :goto_8

    :cond_11
    move v11, v10

    .line 2128
    :goto_8
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 2131
    :cond_12
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2135
    :cond_13
    :goto_9
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->updateSpaceButtons(Lcom/metamoji/mazec/MazecIms;)V

    .line 2138
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    if-eqz v2, :cond_16

    if-eqz v4, :cond_15

    if-eq v1, v9, :cond_14

    goto :goto_a

    :cond_14
    move v2, v7

    goto :goto_b

    :cond_15
    :goto_a
    move v2, v6

    .line 2140
    :goto_b
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_c

    .line 2142
    :cond_16
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2183
    :cond_17
    :goto_c
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    const/16 v4, 0x8

    if-ne v0, v2, :cond_20

    .line 2185
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    if-eqz v3, :cond_18

    move v2, v4

    goto :goto_d

    :cond_18
    move v2, v7

    .line 2186
    :goto_d
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    if-eq v1, v6, :cond_1e

    if-eq v1, v9, :cond_1c

    if-eq v1, v5, :cond_1a

    goto/16 :goto_e

    .line 2222
    :cond_1a
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq v0, v2, :cond_1b

    .line 2223
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2224
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImText:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2225
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2226
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/SelectFilterView;->setDispSelected()V

    .line 2227
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/SelectFilterView;->setVisibility(I)V

    .line 2228
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/SelectColorView;->setDispSelected()V

    .line 2229
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/SelectColorView;->setVisibility(I)V

    .line 2230
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/SelectWidthView;->setDispSelected()V

    .line 2231
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/SelectWidthView;->setVisibility(I)V

    .line 2233
    :cond_1b
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/ToggleImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 2206
    :cond_1c
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq v0, v2, :cond_1d

    .line 2207
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2208
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImText:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2209
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2210
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0, v6}, Lcom/metamoji/mazec/ui/SelectColorView;->setEnabled(Z)V

    .line 2211
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-virtual {v0, v7}, Lcom/metamoji/mazec/ui/SelectFilterView;->setVisibility(I)V

    .line 2212
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/SelectColorView;->setDispSelected()V

    .line 2213
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0, v7}, Lcom/metamoji/mazec/ui/SelectColorView;->setEnabled(Z)V

    .line 2214
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/SelectColorView;->setVisibility(I)V

    .line 2215
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/SelectWidthView;->setDispSelected()V

    .line 2216
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {v0, v7}, Lcom/metamoji/mazec/ui/SelectWidthView;->setEnabled(Z)V

    .line 2217
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/SelectWidthView;->setVisibility(I)V

    .line 2219
    :cond_1d
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-virtual {v0, v7}, Lcom/metamoji/mazec/ui/ToggleImageView;->setVisibility(I)V

    goto :goto_e

    .line 2192
    :cond_1e
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq v0, v2, :cond_1f

    .line 2193
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2194
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImText:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2195
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2196
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/SelectFilterView;->setDispSelected()V

    .line 2197
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectFilterView:Lcom/metamoji/mazec/ui/SelectFilterView;

    invoke-virtual {v0, v10}, Lcom/metamoji/mazec/ui/SelectFilterView;->setVisibility(I)V

    .line 2198
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0, v6}, Lcom/metamoji/mazec/ui/SelectColorView;->setEnabled(Z)V

    .line 2199
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectColorView:Lcom/metamoji/mazec/ui/SelectColorView;

    invoke-virtual {v0, v7}, Lcom/metamoji/mazec/ui/SelectColorView;->setVisibility(I)V

    .line 2200
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {v0, v6}, Lcom/metamoji/mazec/ui/SelectWidthView;->setEnabled(Z)V

    .line 2201
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mSelectWidthView:Lcom/metamoji/mazec/ui/SelectWidthView;

    invoke-virtual {v0, v7}, Lcom/metamoji/mazec/ui/SelectWidthView;->setVisibility(I)V

    .line 2203
    :cond_1f
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-virtual {v0, v7}, Lcom/metamoji/mazec/ui/ToggleImageView;->setVisibility(I)V

    .line 2244
    :cond_20
    :goto_e
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v2, :cond_23

    if-eq v1, v6, :cond_22

    if-eq v1, v9, :cond_22

    if-eq v1, v5, :cond_21

    goto :goto_f

    .line 2258
    :cond_21
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2259
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2260
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImHandwriting:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2261
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImHandwriting:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2262
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2263
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void

    .line 2248
    :cond_22
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2249
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImKeyboard:Landroid/widget/ImageView;

    xor-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2250
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImHandwriting:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2251
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mImHandwriting:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2252
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2253
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_23
    :goto_f
    return-void
.end method

.method private updateButtonStatesInWriting()V
    .locals 11

    .line 2275
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2276
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v1

    .line 2277
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    .line 2278
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->isLatinLang()Z

    move-result v2

    .line 2279
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v3

    .line 2281
    iget-object v4, p0, Lcom/metamoji/mazec/ui/MazecView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    .line 2284
    iget-object v6, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonDeleteStroke:Landroid/widget/ImageView;

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    .line 2285
    :goto_0
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2288
    :cond_1
    iget-object v6, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonBackspace:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v7

    .line 2289
    :goto_1
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2292
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getEditorAction()I

    move-result v6

    .line 2293
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNewLine:Landroid/widget/ImageView;

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    if-eq v1, v10, :cond_5

    :cond_4
    if-ne v6, v10, :cond_5

    .line 2297
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2298
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonNewLine:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 2300
    :cond_5
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2304
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    if-eqz v9, :cond_9

    if-nez v3, :cond_8

    if-eqz v4, :cond_7

    if-eq v1, v10, :cond_8

    :cond_7
    if-eq v6, v10, :cond_8

    .line 2308
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2309
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2310
    iget-object v6, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonAction:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3

    .line 2312
    :cond_8
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2316
    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterStroke:Landroid/widget/ImageView;

    if-eqz v5, :cond_b

    if-ne v1, v10, :cond_b

    if-eqz v4, :cond_a

    move v6, v8

    goto :goto_4

    :cond_a
    move v6, v7

    .line 2318
    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2322
    :cond_b
    iget-object v5, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonEnterConvert:Landroid/widget/ImageView;

    const/4 v6, 0x2

    if-eqz v5, :cond_d

    if-ne v1, v6, :cond_c

    .line 2323
    iget-object v9, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v9}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->hasCurrentCandidate()Z

    move-result v9

    if-eqz v9, :cond_c

    move v9, v8

    goto :goto_5

    :cond_c
    move v9, v7

    :goto_5
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2326
    :cond_d
    iget-object v5, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSkip:Landroid/widget/ImageView;

    if-eqz v5, :cond_f

    if-eqz v3, :cond_f

    if-eq v1, v6, :cond_f

    if-nez v4, :cond_e

    move v7, v8

    .line 2329
    :cond_e
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2334
    :cond_f
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->updateSpaceButtons(Lcom/metamoji/mazec/MazecIms;)V

    if-eqz v2, :cond_12

    .line 2338
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    if-eqz v4, :cond_10

    if-eq v1, v6, :cond_11

    :cond_10
    move v8, v10

    .line 2339
    :cond_11
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_12
    return-void
.end method

.method private updateSpaceButtons(Lcom/metamoji/mazec/MazecIms;)V
    .locals 8

    .line 2345
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    .line 2346
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v1

    .line 2348
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2350
    const-string v3, "ja_JP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2351
    invoke-static {p1}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    move v3, p1

    .line 2354
    :goto_0
    iget-object v4, p0, Lcom/metamoji/mazec/ui/MazecView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v4}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    .line 2357
    :goto_2
    iget-object v6, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpace:Landroid/widget/ImageView;

    const/4 v7, 0x4

    if-eqz v6, :cond_7

    if-eqz v3, :cond_3

    .line 2359
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 2361
    :cond_3
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2366
    iget-object v6, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpace:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    if-nez v4, :cond_5

    const/4 p1, 0x2

    if-ne v0, p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v5

    .line 2364
    :goto_4
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 2366
    :cond_6
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2371
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceHw:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    if-eqz v3, :cond_8

    .line 2372
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getJpDefaultSpace()I

    move-result p1

    if-nez p1, :cond_8

    .line 2373
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceHw:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2374
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceHw:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_6

    .line 2376
    :cond_8
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceHw:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2380
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceFw:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    if-eqz v3, :cond_a

    .line 2381
    invoke-virtual {v1}, Lcom/metamoji/mazec/MazecPreferences;->getJpDefaultSpace()I

    move-result p1

    if-ne p1, v5, :cond_a

    .line 2382
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceFw:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2383
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceFw:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    .line 2385
    :cond_a
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpaceFw:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public clearPopup()V
    .locals 2

    .line 2630
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2631
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/PopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/PopupMenu;->dismiss()V

    .line 2634
    :cond_0
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupMenu:Lcom/metamoji/mazec/ui/PopupMenu;

    .line 2637
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    if-eqz v0, :cond_3

    .line 2638
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2639
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CursorKeysPopuper;->dismiss()V

    .line 2641
    :cond_2
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCurKeys:Lcom/metamoji/mazec/ui/CursorKeysPopuper;

    .line 2644
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    if-eqz v0, :cond_5

    .line 2645
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2646
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->dismiss()V

    .line 2648
    :cond_4
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    .line 2651
    :cond_5
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    if-eqz v0, :cond_7

    .line 2652
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2653
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->dismiss()V

    .line 2655
    :cond_6
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    :cond_7
    const/4 v0, 0x0

    .line 2658
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    return-void
.end method

.method protected closeCandidatesView()Z
    .locals 2

    .line 2944
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2946
    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    .line 2947
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public closing()V
    .locals 1

    const/4 v0, 0x0

    .line 2606
    iput-boolean v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mEnable:Z

    .line 2608
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->clearCallbacks()V

    .line 2609
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    .line 2611
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->onClosing()V

    return-void
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method public initView(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 389
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HwrCandidateSelector;->setLang(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1, p0}, Lcom/metamoji/mazec/MazecIms;->addOnBackListener(Lcom/metamoji/mazec/MazecIms$OnBackListener;)V

    .line 393
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$2;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->addMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V

    .line 438
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHwStrokesModel()Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mViewData:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 440
    const-string p1, "id.progress_overlay"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mProgressOverlay:Landroid/view/View;

    .line 441
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$3;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$3;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 2809
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->dismiss()V

    return v1

    .line 2814
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->dismiss()V

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 2819
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    return v0
.end method

.method protected onDismissMenuBtns(I)V
    .locals 4

    .line 1947
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1971
    :cond_0
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 1972
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    return-void

    .line 1961
    :cond_1
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 1962
    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    return-void

    .line 1966
    :cond_2
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 1967
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    return-void

    .line 1951
    :cond_3
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    if-eqz p1, :cond_4

    :goto_0
    return-void

    .line 1955
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object p1

    .line 1956
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    if-ne v0, v1, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getTopCandidateString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    const-string p1, ""

    .line 1957
    :goto_2
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->showMenuPopupWindow(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2885
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2886
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1846
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1851
    sget-object p2, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne p2, v0, :cond_0

    .line 1852
    iget-object p2, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    if-eqz p2, :cond_0

    .line 1853
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardWidth(I)V

    :cond_0
    return-void
.end method

.method public onPenStyleChanged(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;I)V"
        }
    .end annotation

    .line 2036
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    if-eqz v0, :cond_0

    .line 2037
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->setPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)V

    :cond_0
    return-void
.end method

.method public onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V
    .locals 7

    .line 1982
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    .line 1984
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mProgressOverlay:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 1986
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    .line 1984
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1990
    sget-object v1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    const/4 v6, 0x3

    if-ne v1, v5, :cond_2

    .line 1991
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    if-ne v0, v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1994
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    if-eqz v1, :cond_4

    .line 1995
    sget-object v1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq v1, v5, :cond_4

    if-eq v0, v4, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 2009
    :goto_2
    iget-object v4, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v4, v1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->setVisibility(I)V

    .line 2013
    :cond_4
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    if-eqz v1, :cond_6

    if-eq v0, v6, :cond_5

    .line 2015
    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/ui/HandwritingPanel;->setVisibility(I)V

    .line 2016
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V

    goto :goto_3

    .line 2018
    :cond_5
    invoke-virtual {v1, v3}, Lcom/metamoji/mazec/ui/HandwritingPanel;->setVisibility(I)V

    .line 2022
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardPanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    if-ne v0, v6, :cond_7

    .line 2024
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2025
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->onUIModeChanged(I)V

    goto :goto_4

    .line 2027
    :cond_7
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2032
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->updateButtonStates()V

    return-void
.end method

.method public onUpdateAutoCommitSetting(ZI)V
    .locals 1

    .line 2972
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    if-eqz v0, :cond_0

    .line 2973
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/mazec/ui/HandWritingView;->onUpdateAutoCommitSetting(ZI)V

    :cond_0
    return-void
.end method

.method public onUpdateSelection(IIII)V
    .locals 2

    .line 2873
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2874
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/mazec/ui/KeyboardManager;->onUpdateSelection(IIII)V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .line 2666
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_3

    .line 2673
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->ONKYO:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne p1, v0, :cond_2

    .line 2677
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 2680
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->ONKYO:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_1

    .line 2681
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2682
    const-string/jumbo v1, "string.model_pattern"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/MazecIms;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2690
    :try_start_0
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2691
    const-string/jumbo v0, "string.msg_invalid_device"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/mazec/ui/MazecView;->showAlertDialog(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2695
    const-string v1, "Mazec"

    const-string v2, "invalid model pattern"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2720
    :cond_1
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    if-ne v0, v1, :cond_2

    .line 2730
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isTrialExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2733
    const-string/jumbo v0, "string.msg_trial_expired"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2751
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->checkLangResourcesUpdate()V

    :cond_3
    return-void
.end method

.method protected openCandidatesView(Lcom/metamoji/mazec/converter/ConvertResult;)Z
    .locals 3

    .line 2897
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2898
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 2899
    new-instance v1, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;-><init>(Lcom/metamoji/mazec/MazecIms;)V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    .line 2900
    new-instance v2, Lcom/metamoji/mazec/ui/MazecView$41;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/MazecView$41;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2913
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mPopupCnvCands:Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result v2

    invoke-static {v2}, Lcom/metamoji/mazec/ui/MazecView;->getCandidateTypes(Z)[I

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Lcom/metamoji/mazec/ui/CnvCandidatesPopupWindow;->popup(Landroid/view/View;Lcom/metamoji/mazec/converter/ConvertResult;[I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public replacing()V
    .locals 1

    .line 2594
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->clearCallbacks()V

    .line 2595
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    .line 2597
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    if-eqz v0, :cond_0

    .line 2598
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->onReplacing()V

    :cond_0
    return-void
.end method

.method protected selectConvertCandidate(Lcom/metamoji/mazec/converter/MmjiWord;)V
    .locals 1

    .line 2959
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->closeCandidatesView()Z

    if-eqz p1, :cond_0

    .line 2961
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->commitConvertCandidate(Lcom/metamoji/mazec/converter/MmjiWord;)V

    :cond_0
    return-void
.end method

.method protected showBarrierView(Z)V
    .locals 2

    .line 1903
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_4

    .line 1905
    const-string v0, "id.barrier_view"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1907
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_4

    if-nez v1, :cond_4

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 1909
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1910
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1911
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    :cond_4
    return-void
.end method

.method public showHideCnvResult(Z)V
    .locals 2

    .line 2824
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2825
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2826
    :goto_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->setCandidatesViewShown(Z)V

    :cond_1
    return-void
.end method

.method protected showMenuPopupWindow(Ljava/lang/String;)V
    .locals 3

    .line 1921
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    const/4 v1, 0x1

    .line 1923
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MazecView;->showBarrierView(Z)V

    .line 1924
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getClientType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1925
    new-instance v1, Lcom/metamoji/mazec/ui/MenuPopupWindowNA;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/mazec/ui/MenuPopupWindowNA;-><init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    goto :goto_0

    .line 1927
    :cond_0
    new-instance v1, Lcom/metamoji/mazec/ui/MenuPopupWindow7N;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow7N;-><init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    .line 1929
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$40;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MazecView$40;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x0

    .line 1937
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 1938
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuPopupWnd:Lcom/metamoji/mazec/ui/MenuPopupWindow;

    invoke-virtual {p1, p0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->popup(Landroid/view/View;)V

    return-void
.end method

.method public showTrialExpiredAlert()V
    .locals 2

    .line 2759
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    if-ne v0, v1, :cond_0

    .line 2761
    const-string/jumbo v0, "string.msg_trial_expired"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    const-string v1, "market://details?id=com.metamoji.mazec"

    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->showAlertDialog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected startRepeat(Lcom/metamoji/mazec/ui/MazecView$Repeater;)V
    .locals 1

    const/16 v0, 0x2bc

    .line 2855
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ui/MazecView;->startRepeat(Lcom/metamoji/mazec/ui/MazecView$Repeater;I)V

    return-void
.end method

.method protected startRepeat(Lcom/metamoji/mazec/ui/MazecView$Repeater;I)V
    .locals 3

    .line 2859
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 2860
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mRepeater:Lcom/metamoji/mazec/ui/MazecView$Repeater;

    const/4 v1, 0x1

    .line 2861
    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/ui/MazecView$Repeater;->setAlive(Z)V

    .line 2862
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mRepeater:Lcom/metamoji/mazec/ui/MazecView$Repeater;

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected startRepeatKey(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2833
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 2835
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;

    invoke-direct {v0, p0, p1, p3}, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;II)V

    .line 2837
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->exec()V

    .line 2839
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/mazec/ui/MazecView;->startRepeat(Lcom/metamoji/mazec/ui/MazecView$Repeater;I)V

    return-void
.end method

.method protected startRepeatKey(ILjava/lang/String;ZII)V
    .locals 1

    const/4 v0, 0x0

    .line 2843
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    .line 2845
    new-instance v0, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;

    invoke-direct {v0, p0, p1, p2, p5}, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;ILjava/lang/String;I)V

    .line 2847
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView$KeyRepeater;->exec()V

    if-eqz p3, :cond_0

    .line 2850
    invoke-virtual {p0, v0, p4}, Lcom/metamoji/mazec/ui/MazecView;->startRepeat(Lcom/metamoji/mazec/ui/MazecView$Repeater;I)V

    :cond_0
    return-void
.end method

.method public starting(Lcom/metamoji/mazec/MazecIms;)V
    .locals 6

    .line 2394
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 2396
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initMenuBar(Lcom/metamoji/mazec/MazecIms;)V

    .line 2397
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initCnvCandidatesBar(Lcom/metamoji/mazec/MazecIms;)V

    .line 2398
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initHandwritingPanel(Lcom/metamoji/mazec/MazecIms;)V

    .line 2399
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initKeyboardPanel(Lcom/metamoji/mazec/MazecIms;)V

    .line 2401
    sget-object v1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v1, v2, :cond_0

    .line 2402
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initSmartPhoneOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V

    .line 2405
    :cond_0
    sget-object v1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v1, v2, :cond_1

    .line 2406
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->initTabletOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V

    .line 2412
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->setupUpperPanel(Lcom/metamoji/mazec/MazecIms;)V

    .line 2413
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->setupCenterPanel(Lcom/metamoji/mazec/MazecIms;)V

    .line 2414
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->setupLowerPanel(Lcom/metamoji/mazec/MazecIms;)V

    .line 2416
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MazecView;->clearCallbacks()V

    .line 2417
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView;->clearPopup()V

    .line 2419
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    if-eqz v1, :cond_2

    .line 2420
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->onStarting()V

    .line 2423
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHide:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 2425
    iget v1, v0, Lcom/metamoji/mazec/MazecPreferences;->useButtonType:I

    if-eq v1, v2, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    .line 2428
    :goto_0
    iget-object v5, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHide:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2430
    :cond_4
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursor:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 2431
    iget v5, v0, Lcom/metamoji/mazec/MazecPreferences;->useButtonType:I

    if-ne v2, v5, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2434
    :cond_6
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorLeft:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 2435
    iget v5, v0, Lcom/metamoji/mazec/MazecPreferences;->useButtonType:I

    if-ne v2, v5, :cond_7

    move v5, v4

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2437
    :cond_8
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonCursorRight:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 2438
    iget v5, v0, Lcom/metamoji/mazec/MazecPreferences;->useButtonType:I

    if-ne v2, v5, :cond_9

    move v5, v4

    goto :goto_3

    :cond_9
    move v5, v3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2442
    :cond_a
    sget-object v1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v5, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v1, v5, :cond_d

    .line 2444
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImStroke:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 2445
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v4

    goto :goto_4

    :cond_b
    move v5, v3

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2456
    :cond_c
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonHeightChanger:Lcom/metamoji/mazec/ui/ToggleImageView;

    if-eqz v1, :cond_d

    .line 2457
    iget-boolean v0, v0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/ui/ToggleImageView;->setChecked(Z)V

    .line 2461
    :cond_d
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mHwPanel:Lcom/metamoji/mazec/ui/HandwritingPanel;

    if-eqz v0, :cond_e

    .line 2462
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->onStarting(Lcom/metamoji/mazec/MazecIms;)V

    .line 2465
    :cond_e
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    if-eqz v0, :cond_f

    .line 2466
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->onStarting()V

    .line 2469
    :cond_f
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MazecView;->onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V

    .line 2471
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2482
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    if-eqz v1, :cond_10

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->isInputAlphaNum(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2494
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_13

    .line 2495
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2497
    :cond_10
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    if-eqz v1, :cond_11

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->isInputDateTime(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2506
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2507
    :cond_11
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView;->mKeyboardManager:Lcom/metamoji/mazec/ui/KeyboardManager;

    if-eqz v1, :cond_12

    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->isInputMonth(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2513
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 2515
    :cond_12
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_13

    .line 2517
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mMenuBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2542
    :cond_13
    :goto_5
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonSpace:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 2543
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2545
    :cond_14
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonBackspace:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 2546
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2548
    :cond_15
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMenu:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 2549
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2553
    :cond_16
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_19

    .line 2554
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mButtonMushroom:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    .line 2555
    invoke-static {p1}, Lcom/metamoji/mazec/MushProxyActivity;->hasMushIntents(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_6

    :cond_17
    move v4, v3

    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2559
    :cond_18
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    if-ne v0, v1, :cond_19

    .line 2560
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isTrialExpired()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2561
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MazecView;->mImText:Landroid/widget/ImageView;

    if-eqz p1, :cond_19

    .line 2562
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2578
    :cond_19
    iput-boolean v2, p0, Lcom/metamoji/mazec/ui/MazecView;->mEnable:Z

    return-void
.end method

.method protected stopRepeat()V
    .locals 1

    .line 2866
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mRepeater:Lcom/metamoji/mazec/ui/MazecView$Repeater;

    if-eqz v0, :cond_0

    .line 2867
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MazecView$Repeater;->stop()V

    const/4 v0, 0x0

    .line 2868
    iput-object v0, p0, Lcom/metamoji/mazec/ui/MazecView;->mRepeater:Lcom/metamoji/mazec/ui/MazecView$Repeater;

    :cond_0
    return-void
.end method
