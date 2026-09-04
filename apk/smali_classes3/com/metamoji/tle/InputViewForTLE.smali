.class public Lcom/metamoji/tle/InputViewForTLE;
.super Landroid/view/View;
.source "InputViewForTLE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;
    }
.end annotation


# instance fields
.field private _convertedText:Ljava/lang/String;

.field private _isSupportTLE:Z

.field private _mazecAction:Lcom/metamoji/un/text/MazecAction;

.field private _waitConvertStrokes:Lcom/metamoji/cm/ManualResetEvent;

.field private _waitSupportTLE:Lcom/metamoji/cm/ManualResetEvent;


# direct methods
.method static bridge synthetic -$$Nest$fget_waitConvertStrokes(Lcom/metamoji/tle/InputViewForTLE;)Lcom/metamoji/cm/ManualResetEvent;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/tle/InputViewForTLE;->_waitConvertStrokes:Lcom/metamoji/cm/ManualResetEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_waitSupportTLE(Lcom/metamoji/tle/InputViewForTLE;)Lcom/metamoji/cm/ManualResetEvent;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/tle/InputViewForTLE;->_waitSupportTLE:Lcom/metamoji/cm/ManualResetEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_convertedText(Lcom/metamoji/tle/InputViewForTLE;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/tle/InputViewForTLE;->_convertedText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isSupportTLE(Lcom/metamoji/tle/InputViewForTLE;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/tle/InputViewForTLE;->_isSupportTLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/metamoji/tle/InputViewForTLE;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/metamoji/tle/InputViewForTLE;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/metamoji/tle/InputViewForTLE;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/metamoji/tle/InputViewForTLE;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/metamoji/tle/InputViewForTLE;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/metamoji/tle/InputViewForTLE;->setDefaultFocusHighlightEnabled(Z)V

    .line 51
    new-instance v0, Lcom/metamoji/un/text/MazecAction;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/MazecAction;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_mazecAction:Lcom/metamoji/un/text/MazecAction;

    return-void
.end method


# virtual methods
.method public convertStrokes(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_convertedText:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/metamoji/cm/ManualResetEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/ManualResetEvent;-><init>(Z)V

    iput-object v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_waitConvertStrokes:Lcom/metamoji/cm/ManualResetEvent;

    .line 153
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_mazecAction:Lcom/metamoji/un/text/MazecAction;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/MazecAction;->convertStrokes(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)V

    .line 155
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/tle/InputViewForTLE;->_waitConvertStrokes:Lcom/metamoji/cm/ManualResetEvent;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/ManualResetEvent;->waitOne(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    iget-object p1, p0, Lcom/metamoji/tle/InputViewForTLE;->_convertedText:Ljava/lang/String;

    return-object p1
.end method

.method public createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x10000001

    .line 64
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 67
    const-string v0, "com.metamoji.mazec-api?ver=2"

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 71
    new-instance p1, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;

    invoke-direct {p1, p0, p0}, Lcom/metamoji/tle/InputViewForTLE$MyInputConnection;-><init>(Lcom/metamoji/tle/InputViewForTLE;Landroid/view/View;)V

    return-object p1
.end method

.method public initRecognizeText()Z
    .locals 3

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_isSupportTLE:Z

    .line 87
    new-instance v1, Lcom/metamoji/cm/ManualResetEvent;

    invoke-direct {v1, v0}, Lcom/metamoji/cm/ManualResetEvent;-><init>(Z)V

    iput-object v1, p0, Lcom/metamoji/tle/InputViewForTLE;->_waitSupportTLE:Lcom/metamoji/cm/ManualResetEvent;

    .line 88
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/tle/InputViewForTLE$1;

    invoke-direct {v1, p0}, Lcom/metamoji/tle/InputViewForTLE$1;-><init>(Lcom/metamoji/tle/InputViewForTLE;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_waitSupportTLE:Lcom/metamoji/cm/ManualResetEvent;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/ManualResetEvent;->waitOne(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    iget-boolean v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_isSupportTLE:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/tle/InputViewForTLE$2;

    invoke-direct {v1, p0}, Lcom/metamoji/tle/InputViewForTLE$2;-><init>(Lcom/metamoji/tle/InputViewForTLE;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/tle/InputViewForTLE;->_isSupportTLE:Z

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 76
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 56
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/tle/InputViewForTLE;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public uninitRecognizeText()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/tle/InputViewForTLE$3;

    invoke-direct {v1, p0}, Lcom/metamoji/tle/InputViewForTLE$3;-><init>(Lcom/metamoji/tle/InputViewForTLE;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method
