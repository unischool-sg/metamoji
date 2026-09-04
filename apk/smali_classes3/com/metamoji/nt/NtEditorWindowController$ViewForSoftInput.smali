.class public Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;
.super Landroid/view/View;
.source "NtEditorWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtEditorWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewForSoftInput"
.end annotation


# instance fields
.field public _ic:Lcom/metamoji/un/text/TUInputConnection;

.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4460
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    .line 4461
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 4463
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->setFocusable(Z)V

    .line 4464
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x1

    .line 4476
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x10000001

    .line 4477
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4480
    const-string v0, "com.metamoji.mazec-api?ver=2"

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4485
    new-instance p1, Lcom/metamoji/un/text/TUInputConnection;

    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;)V

    invoke-direct {p1, p0, v0}, Lcom/metamoji/un/text/TUInputConnection;-><init>(Landroid/view/View;Lcom/metamoji/un/text/ITUInputConnectionClient;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->_ic:Lcom/metamoji/un/text/TUInputConnection;

    return-object p1
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 4573
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 4469
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4472
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
