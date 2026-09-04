.class public Lcom/metamoji/ui/UiToast;
.super Landroid/widget/PopupWindow;
.source "UiToast.java"


# static fields
.field private static sActivityListenerRegistered:Z

.field private static sInstance:Lcom/metamoji/ui/UiToast;

.field private static sOnDismissedListener:Ljava/lang/Runnable;


# instance fields
.field protected mAnimationStyleId:I

.field protected mDismissCallback:Ljava/lang/Runnable;

.field protected mDuration:I

.field protected mHandler:Landroid/os/Handler;

.field protected mOnDismissed:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$sfputsInstance(Lcom/metamoji/ui/UiToast;)V
    .locals 0

    sput-object p0, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/metamoji/ui/UiToast$2;

    invoke-direct {v0}, Lcom/metamoji/ui/UiToast$2;-><init>()V

    sput-object v0, Lcom/metamoji/ui/UiToast;->sOnDismissedListener:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 156
    sput-boolean v0, Lcom/metamoji/ui/UiToast;->sActivityListenerRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, v0, v1, v1}, Lcom/metamoji/ui/UiToast;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x2

    .line 48
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/metamoji/ui/UiToast;->mAnimationStyleId:I

    .line 22
    iput p1, p0, Lcom/metamoji/ui/UiToast;->mDuration:I

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/metamoji/ui/UiToast;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/metamoji/ui/UiToast;->mDismissCallback:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcom/metamoji/ui/UiToast;->mOnDismissed:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/metamoji/ui/UiToast;->mAnimationStyleId:I

    .line 22
    iput p1, p0, Lcom/metamoji/ui/UiToast;->mDuration:I

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/metamoji/ui/UiToast;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcom/metamoji/ui/UiToast;->mDismissCallback:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lcom/metamoji/ui/UiToast;->mOnDismissed:Ljava/lang/Runnable;

    return-void
.end method

.method private static _showView(Landroid/view/View;IILjava/lang/String;)Lcom/metamoji/ui/UiToast;
    .locals 2

    .line 191
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 193
    sget v0, Lcom/metamoji/noteanytime/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-static {p0, p1, p2}, Lcom/metamoji/ui/UiToast;->show(Landroid/view/View;Landroid/view/View;I)Lcom/metamoji/ui/UiToast;

    move-result-object p0

    return-object p0
.end method

.method public static dismissAll()V
    .locals 1

    .line 226
    sget-object v0, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/metamoji/ui/UiToast;->dismiss()V

    :cond_0
    return-void
.end method

.method public static show(Landroid/view/View;Landroid/view/View;I)Lcom/metamoji/ui/UiToast;
    .locals 3

    .line 167
    sget-boolean v0, Lcom/metamoji/ui/UiToast;->sActivityListenerRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 168
    sput-boolean v0, Lcom/metamoji/ui/UiToast;->sActivityListenerRegistered:Z

    .line 169
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/UiToast$3;

    invoke-direct {v1}, Lcom/metamoji/ui/UiToast$3;-><init>()V

    const-string v2, "UiToast"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->addActivityChangeListener(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 179
    :cond_0
    sget-object v0, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lcom/metamoji/ui/UiToast;->dismiss()V

    .line 182
    :cond_1
    new-instance v0, Lcom/metamoji/ui/UiToast;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/UiToast;-><init>(Landroid/view/View;)V

    sput-object v0, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    .line 183
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/UiToast;->setDuration(I)V

    .line 184
    sget-object p1, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    sget-object p2, Lcom/metamoji/ui/UiToast;->sOnDismissedListener:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/UiToast;->setOnDismissedListener(Ljava/lang/Runnable;)V

    .line 185
    sget-object p1, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    const/4 p2, 0x0

    const/16 v0, 0x32

    const/16 v1, 0x51

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/metamoji/ui/UiToast;->showAtLocation(Landroid/view/View;III)V

    .line 186
    sget-object p0, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    sget p1, Lcom/metamoji/noteanytime/R$style;->ui_toast_animation:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiToast;->setAnimationStyle(I)V

    .line 187
    sget-object p0, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    return-object p0
.end method

.method public static showProgress(Landroid/view/View;ILjava/lang/String;)Lcom/metamoji/ui/UiToast;
    .locals 1

    .line 219
    sget v0, Lcom/metamoji/noteanytime/R$layout;->toast_progress_view:I

    invoke-static {p0, v0, p1, p2}, Lcom/metamoji/ui/UiToast;->_showView(Landroid/view/View;IILjava/lang/String;)Lcom/metamoji/ui/UiToast;

    move-result-object p0

    return-object p0
.end method

.method public static showText(Landroid/view/View;ILjava/lang/String;)Lcom/metamoji/ui/UiToast;
    .locals 1

    .line 207
    sget v0, Lcom/metamoji/noteanytime/R$layout;->toast_text_view:I

    invoke-static {p0, v0, p1, p2}, Lcom/metamoji/ui/UiToast;->_showView(Landroid/view/View;IILjava/lang/String;)Lcom/metamoji/ui/UiToast;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 103
    :try_start_0
    sget-object v0, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 104
    sput-object v1, Lcom/metamoji/ui/UiToast;->sInstance:Lcom/metamoji/ui/UiToast;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiToast;->mOnDismissed:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 111
    :cond_1
    const-string v0, "UiToast.dismiss()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/UiToast;->mDismissCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/metamoji/ui/UiToast;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iput-object v1, p0, Lcom/metamoji/ui/UiToast;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object v1, p0, Lcom/metamoji/ui/UiToast;->mDismissCallback:Ljava/lang/Runnable;

    .line 117
    :cond_2
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 119
    const-string v1, "UIToast.dismiss error."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public hide()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/ui/UiToast;->dismiss()V

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/metamoji/ui/UiToast;->mAnimationStyleId:I

    .line 58
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/metamoji/ui/UiToast;->mDuration:I

    return-void
.end method

.method public setOnDismissedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/UiToast;->mOnDismissed:Ljava/lang/Runnable;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 4

    .line 75
    const-string v0, "UiToast.showAtLocation()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/metamoji/ui/UiToast;->mAnimationStyleId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 78
    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 80
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/UiToast;->mDuration:I

    if-lez v0, :cond_1

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiToast;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/metamoji/ui/UiToast$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/UiToast$1;-><init>(Lcom/metamoji/ui/UiToast;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiToast;->mDismissCallback:Ljava/lang/Runnable;

    .line 92
    iget-object v1, p0, Lcom/metamoji/ui/UiToast;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/metamoji/ui/UiToast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
