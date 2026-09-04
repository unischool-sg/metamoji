.class public Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;
.super Landroid/view/View;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewForSoftInput"
.end annotation


# instance fields
.field public _ic:Lcom/metamoji/un/text/TUInputConnection;

.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/UnTextUnit;Landroid/content/Context;)V
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

    .line 10837
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    .line 10838
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 10840
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->setFocusable(Z)V

    .line 10841
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method public createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const/4 v0, 0x1

    .line 10853
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x10000001

    .line 10854
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 10857
    const-string v0, "com.metamoji.mazec-api?ver=2"

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 10861
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fput_isSupportReedit(Lcom/metamoji/un/text/UnTextUnit;Z)V

    .line 10862
    new-instance p1, Lcom/metamoji/un/text/TUInputConnection;

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/un/text/TUInputConnection;-><init>(Landroid/view/View;Lcom/metamoji/un/text/ITUInputConnectionClient;)V

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->_ic:Lcom/metamoji/un/text/TUInputConnection;

    return-object p1
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .line 10868
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 10846
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10849
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 10873
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 10878
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$ViewForSoftInput;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
