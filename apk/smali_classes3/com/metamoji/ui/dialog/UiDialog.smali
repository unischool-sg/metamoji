.class public Lcom/metamoji/ui/dialog/UiDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UiDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;,
        Lcom/metamoji/ui/dialog/UiDialog$OnDisMissListener;,
        Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;,
        Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;,
        Lcom/metamoji/ui/dialog/UiDialog$Callback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_PARAMS:Landroid/view/ViewGroup$LayoutParams;

.field public static final Key_CancelDialogFlag:Ljava/lang/String; = "canceldialogflag"

.field private static final Key_DialogVisibility:Ljava/lang/String; = "dialogvisibility"

.field private static final Key_OonoTag:Ljava/lang/String; = "oonotag"

.field public static final Key_ReconstructDialogFlag:Ljava/lang/String; = "reconstructdialogflag"

.field private static mOnGlobalShowDismissListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mStackDialog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _resumeFocusViewId:I

.field protected mAbort:Z

.field private mAutoDetectTextView:Z

.field protected mBack:Z

.field protected mBackgroundBlack:Z

.field private mCallback:Lcom/metamoji/ui/dialog/UiDialog$Callback;

.field protected mCancel:Z

.field protected mCentering:Z

.field protected mClose:Z

.field protected mCloseLeft:Z

.field private mController:Ljava/lang/Object;

.field protected mDealt:Z

.field private mDestructDialog:Z

.field private mDialogRect:Landroid/graphics/Rect;

.field private mDisMissListener:Lcom/metamoji/ui/dialog/UiDialog$OnDisMissListener;

.field mDlgView:Landroid/view/View;

.field protected mDone:Z

.field protected mDoneOnTouchOutsize:Z

.field private mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

.field protected mModal:Z

.field private mOonoDialog:Landroid/app/Dialog;

.field private mOonoTag:Ljava/lang/String;

.field protected mParentDialog:Lcom/metamoji/ui/dialog/UiDialog;

.field private mParentHide:Z

.field private mPreCloseConfirm:Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;

.field mSavedData:Landroid/os/Bundle;

.field private mTextViewsAwareIme:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleId:I

.field private mV4Checker:Z

.field protected mV4Compatible:Z

.field protected mViewId:I

.field private mViewRect:Landroid/graphics/Rect;

.field private mVisibility:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialogRect(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDialogRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOonoDialog(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewRect(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mViewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibility(Lcom/metamoji/ui/dialog/UiDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOonoDialog(Lcom/metamoji/ui/dialog/UiDialog;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDoneOnTouchOutsize(Lcom/metamoji/ui/dialog/UiDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDoneOnTouchOutsize()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetModal(Lcom/metamoji/ui/dialog/UiDialog;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getModal()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/metamoji/ui/dialog/UiDialog;->BACKGROUND_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mOnGlobalShowDismissListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mViewId:I

    .line 46
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTitleId:I

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDone:Z

    .line 48
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCancel:Z

    const/4 v2, 0x0

    .line 49
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDealt:Z

    .line 50
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAbort:Z

    .line 51
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mBack:Z

    .line 52
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mClose:Z

    .line 53
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCloseLeft:Z

    .line 54
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mModal:Z

    .line 55
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDoneOnTouchOutsize:Z

    .line 56
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mBackgroundBlack:Z

    .line 57
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCentering:Z

    .line 58
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mV4Compatible:Z

    const/4 v3, 0x0

    .line 59
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentDialog:Lcom/metamoji/ui/dialog/UiDialog;

    .line 60
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    .line 61
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentHide:Z

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mViewRect:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDialogRect:Landroid/graphics/Rect;

    .line 64
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    .line 65
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    .line 66
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDestructDialog:Z

    .line 67
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mV4Checker:Z

    .line 71
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mController:Ljava/lang/Object;

    .line 72
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    .line 73
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDisMissListener:Lcom/metamoji/ui/dialog/UiDialog$OnDisMissListener;

    .line 563
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mSavedData:Landroid/os/Bundle;

    .line 594
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDlgView:Landroid/view/View;

    .line 758
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->_resumeFocusViewId:I

    .line 854
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mPreCloseConfirm:Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;

    .line 1178
    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAutoDetectTextView:Z

    .line 1179
    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTextViewsAwareIme:Ljava/util/HashSet;

    return-void
.end method

.method public static Exists()Z
    .locals 4

    .line 99
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 101
    sget-object v2, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {v2, v0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->isDialogShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->getCurrentDialog()Lcom/metamoji/ui/dialog/UiDialog;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 112
    :cond_1
    sget-object v3, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    return v1

    .line 114
    :cond_2
    iget-object v0, v0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3

    return v2

    .line 117
    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected static __dismissAllDialogs()V
    .locals 5

    .line 245
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 250
    sget-object v1, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 251
    sget-object v2, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 253
    instance-of v4, v3, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v4, :cond_1

    .line 254
    check-cast v3, Lcom/metamoji/ui/dialog/UiDialog;

    .line 255
    sget-object v4, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllowingStateLoss()V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->removeDialogBackground(Landroidx/fragment/app/FragmentActivity;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private addDialogBackground()V
    .locals 4

    .line 1141
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1145
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1147
    sget v2, Lcom/metamoji/noteanytime/R$id;->dialog_background_for_handset:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 1149
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1150
    sget v0, Lcom/metamoji/noteanytime/R$id;->dialog_background_for_handset:I

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1151
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/metamoji/noteanytime/R$color;->dialog_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v0, 0x1

    .line 1152
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1153
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->BACKGROUND_PARAMS:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addOnGlobalShowDismissListener(Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mOnGlobalShowDismissListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static callOnGlobalDismiss()V
    .locals 2

    .line 88
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mOnGlobalShowDismissListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;

    .line 89
    invoke-interface {v1}, Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;->onGlobalDialogDismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static callOnGlobalShow()V
    .locals 2

    .line 83
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mOnGlobalShowDismissListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;

    .line 84
    invoke-interface {v1}, Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;->onGlobalDialogShow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearImeActionListener()V
    .locals 3

    .line 1223
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTextViewsAwareIme:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x0

    .line 1225
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTextViewsAwareIme:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method private detectTextView(Landroid/view/View;)V
    .locals 3

    .line 1255
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1256
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1257
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/ui/dialog/UiDialog;->detectTextView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1259
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1260
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->addTextViewAwareIme(Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method

.method private detectTextViewAndSetActionListener()V
    .locals 2

    .line 1208
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAutoDetectTextView:Z

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDlgView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/dialog/UiDialog;->detectTextView(Landroid/view/View;)V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTextViewsAwareIme:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1213
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1214
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 276
    invoke-static {}, Lcom/metamoji/ui/dialog/PDFImportOption;->dismissAllDialogs()V

    .line 277
    invoke-static {}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->dismissAllDialogs()V

    .line 278
    invoke-static {}, Lcom/metamoji/ui/dialog/UiAlertDialog;->dismissAllDialogs()V

    .line 279
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->__dismissAllDialogs()V

    .line 280
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {v0, p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->cancelAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private static dismissChildDialog(Ljava/lang/String;)V
    .locals 5

    .line 214
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_1

    .line 220
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    sget-object v1, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 225
    sget-object v2, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 230
    instance-of v4, v3, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v4, :cond_4

    .line 231
    check-cast v3, Lcom/metamoji/ui/dialog/UiDialog;

    .line 232
    sget-object v4, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/UiDialog;->dismiss()V

    .line 234
    invoke-direct {v3}, Lcom/metamoji/ui/dialog/UiDialog;->getDestructDialog()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    iget-object v2, v3, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private getBackgroundBlack()Z
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mBackgroundBlack:Z

    return v0
.end method

.method private getCentering()Z
    .locals 1

    .line 1044
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCentering:Z

    return v0
.end method

.method public static getCurrentDialog()Lcom/metamoji/ui/dialog/UiDialog;
    .locals 5

    .line 126
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 133
    :cond_1
    sget-object v2, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 134
    sget-object v3, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 136
    instance-of v4, v3, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v4, :cond_2

    .line 137
    check-cast v3, Lcom/metamoji/ui/dialog/UiDialog;

    .line 138
    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/UiDialog;->getDialogVisibility()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getDestructDialog()Z
    .locals 1

    .line 1060
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDestructDialog:Z

    return v0
.end method

.method protected static getDialog(Ljava/lang/String;)Lcom/metamoji/ui/dialog/UiDialog;
    .locals 2

    .line 198
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 203
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 204
    instance-of v0, p0, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v0, :cond_1

    .line 205
    check-cast p0, Lcom/metamoji/ui/dialog/UiDialog;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private getDoneOnTouchOutsize()Z
    .locals 1

    .line 1028
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDoneOnTouchOutsize:Z

    return v0
.end method

.method private getModal()Z
    .locals 1

    .line 1020
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mModal:Z

    return v0
.end method

.method private static getParentDialog(Ljava/lang/String;)Lcom/metamoji/ui/dialog/UiDialog;
    .locals 6

    .line 152
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 159
    :cond_1
    sget-object v3, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-lez v3, :cond_3

    .line 160
    sget-object v2, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v4, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 163
    instance-of v4, v2, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v4, :cond_2

    .line 164
    check-cast v2, Lcom/metamoji/ui/dialog/UiDialog;

    return-object v2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method protected static hasChildDialog(Ljava/lang/String;)Z
    .locals 5

    .line 178
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 182
    sget-object v4, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 183
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/2addr v3, v2

    if-ge v3, v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public static hideAllDialogs()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 298
    :cond_1
    sget-object v1, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 299
    sget-object v2, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 300
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 301
    instance-of v3, v2, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v3, :cond_2

    .line 302
    check-cast v2, Lcom/metamoji/ui/dialog/UiDialog;

    .line 303
    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/UiDialog;->hide()V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private hideParentDialog()V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->getParentDialog(Ljava/lang/String;)Lcom/metamoji/ui/dialog/UiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentDialog:Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v0, :cond_2

    .line 1102
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentHide:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1103
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/UiDialog;->setDialogVisibility(Z)V

    .line 1105
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentDialog:Lcom/metamoji/ui/dialog/UiDialog;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentDialog:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/UiDialog;->getModal()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiDialog;->setModal(Z)V

    :cond_2
    return-void
.end method

.method private removeDialogBackground()V
    .locals 1

    .line 1159
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1163
    :cond_0
    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->removeDialogBackground(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private static removeDialogBackground(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1167
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 1169
    sget v0, Lcom/metamoji/noteanytime/R$id;->dialog_background_for_handset:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static removeOnGlobalShowDismissListener(Lcom/metamoji/ui/dialog/UiDialog$OnGlobalShowDismissListener;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mOnGlobalShowDismissListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private setContentView(Landroid/app/Dialog;)V
    .locals 6

    .line 597
    iget v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mViewId:I

    if-gez v0, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mViewId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 604
    iget v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTitleId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 605
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 607
    iget v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTitleId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 612
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    .line 614
    iget-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCancel:Z

    if-nez v4, :cond_3

    iget-boolean v5, p0, Lcom/metamoji/ui/dialog/UiDialog;->mBack:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCloseLeft:Z

    if-eqz v5, :cond_2

    goto :goto_0

    .line 635
    :cond_2
    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    goto :goto_2

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    .line 616
    sget v4, Lcom/metamoji/noteanytime/R$string;->Button_Cancel_J:I

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 617
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    goto :goto_1

    .line 619
    :cond_4
    iget-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mBack:Z

    if-eqz v4, :cond_5

    .line 620
    sget v4, Lcom/metamoji/noteanytime/R$string;->Button_Back_J:I

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 621
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    goto :goto_1

    .line 623
    :cond_5
    iget-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCloseLeft:Z

    if-eqz v4, :cond_6

    .line 624
    sget v4, Lcom/metamoji/noteanytime/R$string;->Button_Close_J:I

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 625
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 627
    :cond_6
    :goto_1
    new-instance v4, Lcom/metamoji/ui/dialog/UiDialog$3;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/dialog/UiDialog$3;-><init>(Lcom/metamoji/ui/dialog/UiDialog;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    :cond_7
    :goto_2
    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v1, :cond_b

    .line 642
    iget-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDone:Z

    if-nez v4, :cond_9

    iget-boolean v5, p0, Lcom/metamoji/ui/dialog/UiDialog;->mClose:Z

    if-eqz v5, :cond_8

    goto :goto_3

    .line 665
    :cond_8
    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    goto :goto_4

    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    .line 644
    sget v3, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 645
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 646
    new-instance v3, Lcom/metamoji/ui/dialog/UiDialog$4;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/UiDialog$4;-><init>(Lcom/metamoji/ui/dialog/UiDialog;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 654
    :cond_a
    sget v3, Lcom/metamoji/noteanytime/R$string;->Button_Close_J:I

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 655
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 656
    new-instance v3, Lcom/metamoji/ui/dialog/UiDialog$5;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/UiDialog$5;-><init>(Lcom/metamoji/ui/dialog/UiDialog;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 672
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getBackgroundBlack()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    const/16 v4, 0x7f

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_5

    :cond_c
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    :goto_5
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 676
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getCentering()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 677
    sget v1, Lcom/metamoji/noteanytime/R$id;->control_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_e

    .line 679
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 680
    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 681
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 692
    :cond_d
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->addDialogBackground()V

    .line 701
    :cond_e
    :goto_6
    new-instance v1, Lcom/metamoji/ui/dialog/UiDialog$6;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/UiDialog$6;-><init>(Lcom/metamoji/ui/dialog/UiDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 721
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDlgView:Landroid/view/View;

    .line 722
    new-instance v1, Lcom/metamoji/ui/dialog/UiDialog$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/UiDialog$7;-><init>(Lcom/metamoji/ui/dialog/UiDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 752
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->detectTextViewAndSetActionListener()V

    .line 754
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 755
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private showParentDialog()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->getParentDialog(Ljava/lang/String;)Lcom/metamoji/ui/dialog/UiDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentDialog:Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 1125
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/UiDialog;->setDialogVisibility(Z)V

    .line 1126
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentHide:Z

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentDialog:Lcom/metamoji/ui/dialog/UiDialog;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1130
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void

    .line 1136
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->removeDialogBackground()V

    return-void
.end method

.method public static showTopDialog()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    sget-object v1, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_3

    .line 326
    sget-object v2, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 328
    instance-of v3, v2, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v3, :cond_2

    .line 329
    check-cast v2, Lcom/metamoji/ui/dialog/UiDialog;

    .line 330
    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/UiDialog;->hide()V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 333
    :cond_3
    sget-object v1, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 335
    instance-of v1, v0, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v1, :cond_4

    .line 336
    check-cast v0, Lcom/metamoji/ui/dialog/UiDialog;

    .line 337
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiDialog;->show()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addRightButton(Landroid/view/View;)V
    .locals 2

    .line 1286
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_right_button_base:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1287
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected addTextViewAwareIme(Landroid/widget/EditText;)V
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTextViewsAwareIme:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 1199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTextViewsAwareIme:Ljava/util/HashSet;

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTextViewsAwareIme:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected disableAutoDetectTextViewMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1185
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAutoDetectTextView:Z

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 978
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDealt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 979
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAbort:Z

    .line 980
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void

    .line 984
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method protected enableAutoDetectTextViewMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1189
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAutoDetectTextView:Z

    return-void
.end method

.method public getDialogSafety()Landroid/app/Dialog;
    .locals 1

    .line 1065
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    :cond_0
    return-object v0
.end method

.method protected getDialogVisibility()Z
    .locals 1

    .line 1056
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    return v0
.end method

.method public getOnClosedListener()Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1074
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiDialog;->setDialogVisibility(Z)V

    .line 1078
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_1
    return-void
.end method

.method protected isImeActionAcceptable(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 587
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x1

    .line 876
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDealt:Z

    .line 877
    iget-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAbort:Z

    if-eqz p1, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismiss()V

    .line 884
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 886
    const-string v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 889
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 890
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 893
    iget-object v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_2

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCallback:Lcom/metamoji/ui/dialog/UiDialog$Callback;

    if-eqz v0, :cond_4

    .line 896
    iget v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mViewId:I

    iget-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/metamoji/ui/dialog/UiDialog$Callback;->onDialogClosed(ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 898
    :cond_4
    :goto_2
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->callOnGlobalDismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiDialog;->setRetainInstance(Z)V

    const/4 v1, 0x0

    .line 442
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDealt:Z

    .line 443
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mAbort:Z

    .line 446
    iget-boolean v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mV4Checker:Z

    if-nez v2, :cond_0

    .line 449
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mV4Checker:Z

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 454
    const-string v3, "dialogvisibility"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    .line 455
    const-string v3, "oonotag"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 457
    sget-object v4, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 458
    sget-object v3, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    instance-of v3, v3, Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    if-nez v3, :cond_5

    .line 466
    iget-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mController:Ljava/lang/Object;

    instance-of v4, v3, Lcom/metamoji/ui/dialog/UiDialog$Callback;

    if-eqz v4, :cond_2

    .line 467
    check-cast v3, Lcom/metamoji/ui/dialog/UiDialog$Callback;

    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCallback:Lcom/metamoji/ui/dialog/UiDialog$Callback;

    goto :goto_1

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/metamoji/ui/dialog/UiDialog$Callback;

    if-eqz v3, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/dialog/UiDialog$Callback;

    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCallback:Lcom/metamoji/ui/dialog/UiDialog$Callback;

    goto :goto_1

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/metamoji/ui/dialog/UiDialog$Callback;

    if-eqz v3, :cond_4

    .line 471
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/dialog/UiDialog$Callback;

    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCallback:Lcom/metamoji/ui/dialog/UiDialog$Callback;

    goto :goto_1

    .line 473
    :cond_4
    new-instance v3, Lcom/metamoji/ui/dialog/UiDialog$2;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/dialog/UiDialog$2;-><init>(Lcom/metamoji/ui/dialog/UiDialog;)V

    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCallback:Lcom/metamoji/ui/dialog/UiDialog$Callback;

    .line 482
    :cond_5
    :goto_1
    new-instance v3, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/metamoji/noteanytime/R$style;->UiDialogTheme:I

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    .line 483
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 488
    const-string/jumbo v4, "view_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 489
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mViewId:I

    .line 493
    :cond_6
    const-string/jumbo v4, "title_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 494
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mTitleId:I

    .line 498
    :cond_7
    const-string v4, "done_button"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 499
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDone:Z

    .line 501
    :cond_8
    const-string v4, "cancel_button"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 502
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCancel:Z

    .line 504
    :cond_9
    const-string v4, "back_button"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 505
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mBack:Z

    .line 507
    :cond_a
    const-string v4, "close_button"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 508
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/metamoji/ui/dialog/UiDialog;->mClose:Z

    .line 510
    :cond_b
    const-string v4, "close_left_button"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 511
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCloseLeft:Z

    .line 515
    :cond_c
    iget-object v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    invoke-direct {p0, v3}, Lcom/metamoji/ui/dialog/UiDialog;->setContentView(Landroid/app/Dialog;)V

    if-eqz p1, :cond_f

    .line 517
    iget-boolean v3, p0, Lcom/metamoji/ui/dialog/UiDialog;->mV4Compatible:Z

    if-eqz v3, :cond_d

    if-eqz v2, :cond_f

    .line 537
    :cond_d
    const-string v2, "canceldialogflag"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 538
    const-string v3, "reconstructdialogflag"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_f

    .line 540
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDestructDialog:Z

    if-eqz v2, :cond_e

    .line 542
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_2

    .line 545
    :cond_e
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismiss()V

    .line 549
    :goto_2
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 550
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 552
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->removeDialogBackground()V

    .line 556
    :cond_f
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz p1, :cond_10

    .line 557
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "\u53e4\u3044\u30c0\u30a4\u30a2\u30ed\u30b0:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 560
    :cond_10
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 999
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 1001
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1006
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->showParentDialog()V

    .line 1008
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissChildDialog(Ljava/lang/String;)V

    .line 1010
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 991
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 994
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 937
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 940
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    .line 968
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDisMissListener:Lcom/metamoji/ui/dialog/UiDialog$OnDisMissListener;

    if-eqz p1, :cond_0

    .line 969
    invoke-interface {p1}, Lcom/metamoji/ui/dialog/UiDialog$OnDisMissListener;->onDisMiss()V

    :cond_0
    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 902
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mPreCloseConfirm:Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;->confermBeforeClose(Lcom/metamoji/ui/dialog/UiDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 907
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->clearImeActionListener()V

    const/4 p1, 0x1

    .line 909
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDealt:Z

    .line 911
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 920
    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 923
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 924
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    if-eqz v1, :cond_4

    .line 927
    iget-object v2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 932
    :cond_4
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->callOnGlobalDismiss()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1278
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/UiDialog;->isImeActionAcceptable(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1279
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 765
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    const/4 v0, -0x1

    .line 768
    iput v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->_resumeFocusViewId:I

    .line 769
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->_resumeFocusViewId:I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 783
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 787
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    if-nez v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 797
    iget v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->_resumeFocusViewId:I

    if-eq v0, v1, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 800
    iget v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->_resumeFocusViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 802
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 566
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 567
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mSavedData:Landroid/os/Bundle;

    .line 568
    const-string v0, "dialogvisibility"

    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    const-string v0, "oonotag"

    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected restoreInstanceStateIfAvailable(Landroid/app/Dialog;)Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mSavedData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 575
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mSavedData:Landroid/os/Bundle;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public safeShow(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 426
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/UiDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/ui/dialog/UiDialog$1;-><init>(Lcom/metamoji/ui/dialog/UiDialog;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Ljava/lang/Class;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void

    .line 428
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "UiDialog.safeShow must be called in UI Thread."

    invoke-direct {p1, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public safeShow(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->safeShow(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundBlack(Z)V
    .locals 0

    .line 1032
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mBackgroundBlack:Z

    return-void
.end method

.method public setCentering(Z)V
    .locals 0

    .line 1040
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mCentering:Z

    return-void
.end method

.method public setController(Ljava/lang/Object;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mController:Ljava/lang/Object;

    return-void
.end method

.method protected setDialogVisibility(Z)V
    .locals 0

    .line 1052
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mVisibility:Z

    return-void
.end method

.method public setDoneOnTouchOutsize(Z)V
    .locals 0

    .line 1024
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDoneOnTouchOutsize:Z

    return-void
.end method

.method public setHideParentDialog(Z)V
    .locals 0

    .line 1048
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mParentHide:Z

    return-void
.end method

.method public setModal(Z)V
    .locals 0

    .line 1016
    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mModal:Z

    return-void
.end method

.method public setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    return-void
.end method

.method public setOnDisMissListener(Lcom/metamoji/ui/dialog/UiDialog$OnDisMissListener;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mDisMissListener:Lcom/metamoji/ui/dialog/UiDialog$OnDisMissListener;

    return-void
.end method

.method public setPreCloseConfirmListener(Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog;->mPreCloseConfirm:Lcom/metamoji/ui/dialog/UiDialog$IPreCloseConfirm;

    return-void
.end method

.method public show()V
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 1084
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1087
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiDialog;->setDialogVisibility(Z)V

    .line 1088
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 345
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    instance-of v0, v0, Lcom/metamoji/ui/dialog/UiDialog;

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    iput-object p2, p0, Lcom/metamoji/ui/dialog/UiDialog;->mOonoTag:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->callOnGlobalShow()V

    .line 354
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    .line 361
    :cond_1
    sget-object v0, Lcom/metamoji/ui/dialog/UiDialog;->mStackDialog:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiDialog;->hideParentDialog()V

    .line 364
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method
